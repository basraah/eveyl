defmodule EveYL.Parse.Sde.Bsd do
    alias EveYL.Parse.Sde.Bsd

    def parse(path, tail) when (hd tail) in [:agtAgents, :agtAgentTypes, :agtResearchAgents], do: Bsd.Agt.parse(path, hd tail)
    def parse(path, tail) when (hd tail) in [:chrAncestries, :chrAttributes, :chrBloodlines, :chrFactions, :chrRaces] do
        Bsd.Chr.parse(path, hd tail)
    end
    def parse(path, tail) when (hd tail) in [:crpActivities, :crpNPCCorporationDivisions, 
    :crpNPCCorporationResearchFields, :crpNPCCorporationTrades, :crpNPCCorporations, :crpNPCDivisions], do: Bsd.Crp.parse(path, hd tail)
end
