defmodule EveYL.Schema.ChrAncestries do
    use Ecto.Schema

    @primary_key {:ancestryID, :integer, autogenerate: false}

    schema "chrAncestries" do
        field :ancestryName, :string
        field :bloodlineID, :integer
        field :description, :string
        field :perception, :integer
        field :willpower, :integer
        field :charisma, :integer
        field :memory, :integer
        field :intelligence, :integer
        field :iconID, :integer
        field :shortDescription, :string
    end
end

defmodule EveYL.Schema.ChrAttributes do
    use Ecto.Schema

    @primary_key {:attributeID, :integer, autogenerate: false}

    schema "chrAttributes" do
        field :attributeName, :string
        field :description, :string
        field :iconID, :integer
        field :shortDescription, :string
        field :notes, :string
    end
end

defmodule EveYL.Schema.ChrBloodlines do
    use Ecto.Schema

    @primary_key {:bloodlineID, :integer, autogenerate: false}

    schema "chrBloodlines" do
        field :bloodlineName, :string
        field :raceID, :integer
        field :description, :string
        field :maleDescription, :string
        field :femaleDescription, :string
        field :shipTypeID, :integer
        field :corporationID, :integer
        field :perception, :integer
        field :willpower, :integer
        field :charisma, :integer
        field :memory, :integer
        field :intelligence, :integer
        field :iconID, :integer
        field :shortDescription, :string
        field :shortMaleDescription, :string
        field :shortFemaleDescription, :string
    end
end

defmodule EveYL.Schema.ChrFactions do
    use Ecto.Schema

    @primary_key {:factionID, :integer, autogenerate: false}

    schema "chrFactions" do
        field :factionName, :string
        field :description, :string
        field :raceIDs, :integer
        field :solarSystemID, :integer
        field :corporationID, :integer
        field :sizeFactor, :float
        field :stationCount, :integer
        field :stationSystemCount, :integer
        field :militiaCorporationID, :integer
        field :iconID, :integer
    end
end

defmodule EveYL.Schema.ChrRaces do
    use Ecto.Schema

    @primary_key {:raceID, :integer, autogenerate: false}

    schema "chrRaces" do
        field :raceName, :string
        field :description, :string
        field :iconID, :integer
        field :shortDescription, :string
    end
end
