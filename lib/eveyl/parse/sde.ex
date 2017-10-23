defmodule EveYL.Parse.Sde do
    alias EveYL.Parse.Sde.Bsd
    alias EveYL.Schema

    @file_extension ".yaml"

    def parse([:sde | tail] = path_config) when is_list(path_config) do
        parse(path_config, tail)
    end

    defp parse(path, [:bsd | tail]), do: Schema.transaction(fn () -> Bsd.parse(path, tail) end, [{:timeout, :infinity}])
    #defp parse(path, [:fsd | tail]), do: Fsd.parse(path, tail)

    @doc """
    Parse the given filename path into a simple yaml format
    """
    def simple_yaml_parse(path) do
        YamlElixir.read_from_file(path, atoms: true)
    end

    @doc """
    Get the file path based on the given path_config list of atoms
    """
    def get_file_path(path_config) when is_list(path_config) do
        ((for val <- path_config, do: Atom.to_string(val)) |> Path.join) <> @file_extension
    end

    def keys_to_atom(string_key_map) do
      for {key, val} <- string_key_map, into: %{}, do: {String.to_atom(key), val}
    end

    @doc """
    Directly map the list of list of tuples to the target schema atom
    Use get_schema_fn to get a new schema struct
    """
    def direct_yaml_mapping([head | tail], target, get_schema_fn) do
        get_schema_fn.(target) |> Map.merge(keys_to_atom(head)) |> Schema.insert
        direct_yaml_mapping(tail, target, get_schema_fn)
    end
    def direct_yaml_mapping([], _, _), do: IO.puts("End of list")
end
