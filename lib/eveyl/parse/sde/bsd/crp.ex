defmodule EveYL.Parse.Sde.Bsd.Crp do
    alias EveYL.Parse.Sde
    alias EveYL.Schema
    def parse(path, target) do
        Sde.get_file_path(path) 
        |> Sde.simple_yaml_parse
        |> Sde.direct_yaml_mapping(target, &get_schema/1)
    end

    def get_schema(schema_ref) do
        case schema_ref do
            :crpActivities -> %Schema.CrpActivities{}
            :crpNPCCorporationDivisions -> %Schema.CrpNPCCorporationDivisions{}
            :crpNPCCorporationResearchFields -> %Schema.CrpNPCCorporationResearchFields{}
            :crpNPCCorporationTrades -> %Schema.CrpNPCCorporationTrades{}
            :crpNPCCorporations -> %Schema.CrpNPCCorporations{}
            :crpNPCDivisions -> %Schema.CrpNPCDivisions{}
        end
    end
end
