defmodule EveYL.Schema.AgtAgentTypes do
    use Ecto.Schema

    @primary_key {:agentTypeID, :id, autogenerate: false}

    schema "agtAgentTypes" do
        field :agentType, :string
    end
end

defmodule EveYL.Schema.AgtAgents do
    use Ecto.Schema

    @primary_key {:agentID, :id, autogenerate: false}

    schema "agtAgents" do
        field :divisionID,      :integer
        field :corporationID,   :integer
        field :locationID,      :integer # FK ?
        field :level,           :integer
        field :quality,         :integer
        field :agentTypeID,     :integer # FK
        field :isLocator,       :boolean
    end
end

defmodule EveYL.Schema.AgtResearchAgents do
    use Ecto.Schema

    @primary_key false
    schema "agtResearchAgents" do
        field :agentID, :integer, primary_key: true
        field :typeID,  :integer, primary_key: true
    end
end
