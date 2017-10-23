defmodule EveYL.Parse.Sde.Bsd.Chr do
    alias EveYL.Parse.Sde
    alias EveYL.Schema
    def parse(path, target) do
        Sde.get_file_path(path) 
        |> Sde.simple_yaml_parse
        |> Sde.direct_yaml_mapping(target, &get_schema/1)
    end

    def get_schema(schema_ref) do
        case schema_ref do
            :chrAncestries -> %Schema.ChrAncestries{}
            :chrAttributes -> %Schema.ChrAttributes{}
            :chrBloodlines -> %Schema.ChrBloodlines{}
            :chrFactions -> %Schema.ChrFactions{}
            :chrRaces -> %Schema.ChrRaces{}
        end
    end
end
