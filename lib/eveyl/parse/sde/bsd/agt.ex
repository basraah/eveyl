defmodule EveYL.Parse.Sde.Bsd.Agt do
    alias EveYL.Parse.Sde
    alias EveYL.Schema
    def parse(path, target) do
        Sde.get_file_path(path) 
        |> Sde.simple_yaml_parse
        |> Sde.direct_yaml_mapping(target, &get_schema/1)
    end

    def get_schema(schema_ref) do
        case schema_ref do
            :agtAgents -> %Schema.AgtAgents{}
            :agtAgentTypes -> %Schema.AgtAgentTypes{}
            :agtResearchAgents -> %Schema.AgtResearchAgents{}
        end
    end
end
