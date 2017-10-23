defmodule EveYL.Schema.CrpActivities do
    use Ecto.Schema

    @primary_key false

    schema "crpActivities" do
        field :activityID, :integer, primary_key: true
        field :activityName, :string
        field :description, :string
    end
end

defmodule EveYL.Schema.CrpNPCCorporationDivisions do
    use Ecto.Schema

    @primary_key false

    schema "crpNPCCorporationDivisions" do
        field :corporationID, :integer, primary_key: true
        field :divisionID, :integer, primary_key: true
        field :size, :integer 
    end
end

defmodule EveYL.Schema.CrpNPCCorporationResearchFields do
    use Ecto.Schema

    @primary_key false

    schema "crpNPCCorporationResearchFields" do
        field :skillID, :integer, primary_key: true
        field :corporationID, :integer, primary_key: true
    end
end

defmodule EveYL.Schema.CrpNPCCorporationTrades do
    use Ecto.Schema

    @primary_key false
    schema "crpNPCCorporationTrades" do
        field :corporationID, :integer , primary_key: true
        field :typeID, :integer, primary_key: true
    end
end

defmodule EveYL.Schema.CrpNPCCorporations do
    use Ecto.Schema

    @primary_key false

    schema "crpNPCCorporations" do
        field :corporationID, :integer, primary_key: true
        field :size, :string # Char
        field :extent, :string # Char
        field :solarSystemID, :integer 
        field :investorID1, :integer 
        field :investorShares1, :integer 
        field :investorID2, :integer 
        field :investorShares2, :integer 
        field :investorID3, :integer 
        field :investorShares3, :integer 
        field :investorID4, :integer 
        field :investorShares4, :integer 
        field :friendID, :integer 
        field :enemyID, :integer 
        field :publicShares, :integer 
        field :initialPrice, :integer 
        field :minSecurity, :float
        field :scattered, :boolean
        field :fringe, :integer 
        field :corridor, :integer 
        field :hub, :integer 
        field :border, :integer 
        field :factionID, :integer 
        field :sizeFactor, :float
        field :stationCount, :integer 
        field :stationSystemCount, :integer 
        field :description, :string
        field :iconID, :integer
    end
end

defmodule EveYL.Schema.CrpNPCDivisions do
    use Ecto.Schema

    @primary_key false
    schema "crpNPCDivisions" do
        field :divisionID, :integer, primary_key: true
        field :divisionName, :string
        field :description, :string
        field :leaderType, :string
    end
end
