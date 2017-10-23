defmodule EveYL.Schema.Migrations.CreateEvesde do
  use Ecto.Migration

  def change do
    create table(:agtAgents, primary_key: false) do
      add :agentID, :integer, primary_key: true
      add :divisionID, :integer
      add :corporationID, :integer
      add :locationID, :integer
      add :level, :integer
      add :quality, :integer
      add :agentTypeID, :integer
      add :isLocator, :boolean
    end

    create index("agtAgents", [:corporationID])
    create index("agtAgents", [:locationID])
    # Create index etc etc

    create table(:agtAgentTypes, primary_key: false) do
      add :agentTypeID, :integer, primary_key: true
      add :agentType, :string, size: 50
    end

    create table(:agtResearchAgents, primary_key: false) do
      add :agentID, :integer, primary_key: true
      add :typeID, :integer, primary_key: true
    end

    create table(:chrAncestries, primary_key: false) do
      add :ancestryID, :integer, primary_key: true
      add :ancestryName, :string, size: 100
      add :bloodlineID, :integer
      add :description, :string, size: 1000
      add :perception, :integer
      add :willpower, :integer
      add :charisma, :integer
      add :memory, :integer
      add :intelligence, :integer
      add :iconID, :integer
      add :shortDescription, :string, size: 500
    end

    create table(:chrAttributes, primary_key: false) do
      add :attributeID, :integer, primary_key: true
      add :attributeName, :string, size: 100
      add :description, :string, size: 1000
      add :iconID, :integer
      add :shortDescription, :string, size: 500
      add :notes, :string, size: 500
    end

    create table(:chrBloodlines, primary_key: false) do
      add :bloodlineID, :integer, primary_key: true
      add :bloodlineName, :string, size: 100
      add :raceID, :integer
      add :description, :string, size: 1000
      add :maleDescription, :string, size: 1000
      add :femaleDescription, :string, size: 1000
      add :shipTypeID, :integer
      add :corporationID, :integer
      add :perception, :integer
      add :willpower, :integer
      add :charisma, :integer
      add :memory, :integer
      add :intelligence, :integer
      add :iconID, :integer
      add :shortDescription, :string, size: 500
      add :shortMaleDescription, :string, size: 500
      add :shortFemaleDescription, :string, size: 500
    end

    create table(:chrFactions, primary_key: false) do
      add :factionID, :integer, primary_key: true
      add :factionName, :string, size: 100
      add :description, :string, size: 1000
      add :raceIDs, :integer
      add :solarSystemID, :integer
      add :corporationID, :integer
      add :sizeFactor, :float
      add :stationCount, :integer
      add :stationSystemCount, :integer
      add :militiaCorporationID, :integer
      add :iconID, :integer
    end 

    create table(:chrRaces, primary_key: false) do
      add :raceID, :integer, primary_key: true
      add :raceName, :string, size: 100
      add :description, :string, size: 1000
      add :iconID, :integer
      add :shortDescription, :string, size: 500
    end

    create table(:crpActivities, primary_key: false) do
      add :activityID, :integer, primary_key: true
      add :activityName, :string, size: 100 
      add :description, :string, size: 1000 
    end

    create table(:crpNPCCorporationDivisions, primary_key: false) do
      add :corporationID, :integer, primary_key: true
      add :divisionID, :integer, primary_key: true
      add :size, :integer 
    end

    create table(:crpNPCCorporationResearchFields, primary_key: false) do
      add :skillID, :integer, primary_key: true
      add :corporationID, :integer, primary_key: true
    end

    create table(:crpNPCCorporationTrades, primary_key: false) do
      add :corporationID, :integer , primary_key: true
      add :typeID, :integer, primary_key: true
    end

    create table(:crpNPCCorporations, primary_key: false) do
      add :corporationID, :integer, primary_key: true
      add :size, :string, size: 1 # Char
      add :extent, :string, size: 1 # Char
      add :solarSystemID, :integer 
      add :investorID1, :integer 
      add :investorShares1, :integer 
      add :investorID2, :integer 
      add :investorShares2, :integer 
      add :investorID3, :integer 
      add :investorShares3, :integer 
      add :investorID4, :integer 
      add :investorShares4, :integer 
      add :friendID, :integer 
      add :enemyID, :integer 
      add :publicShares, :integer 
      add :initialPrice, :integer 
      add :minSecurity, :float
      add :scattered, :boolean
      add :fringe, :integer 
      add :corridor, :integer 
      add :hub, :integer 
      add :border, :integer 
      add :factionID, :integer 
      add :sizeFactor, :float
      add :stationCount, :integer 
      add :stationSystemCount, :integer 
      add :description, :string, size: 4000 
      add :iconID, :integer
    end

    create table(:crpNPCDivisions, primary_key: false) do
      add :divisionID, :integer, primary_key: true
      add :divisionName, :string, size: 100 
      add :description, :string, size: 1000 
      add :leaderType, :string, size: 100 
    end
  end
end
