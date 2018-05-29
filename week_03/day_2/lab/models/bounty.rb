require('pg')
class Bounty

  attr_accessor :name, :bounty_value, :danger_level, :home_world
  attr_reader :id

def initialize(information)
  @id = information['id'].to_i if information["id"]
  @name = information['name']
  @bounty_value = information['bounty_value'].to_i
  @danger_level = information['danger_level']
  @home_world = information['home_world']
end

def Bounty.all()
  db = PG.connect({
    dbname: 'space_cowboys',
    host: 'localhost'
    })
    sql = "SELECT * FROM space_cowboys"
    db.prepare("all", sql)
    cowboys = db.exec_prepared("all")
    db.close()
    return cowboys.map{|cowboy| Bounty.new(cowboy)}
end

def Bounty.delete_all()
  db = PG.connect({
    dbname: 'space_cowboys',
    host: 'localhost'
    })
    sql = "DELETE FROM space_cowboys;"
    db.prepare("delete_all", sql)
    db.exec_prepared("delete_all")
    db.close()
end

def Bounty.delete()
  db = PG.connect({
    dbname: 'space_cowboys',
    host: 'localhost'
    })
    sql = "DELETE FROM space_cowboys WHERE id = $1"
    values = [@id]
  db.prepare("delete_one", sql)
  db.exec_prepared("delete_one", values)
  db.close()
end

def save()
  db = PG.connect({
    dbname: 'space_cowboys',
    host: 'localhost'
    })
  sql = "INSERT INTO space_cowboys
  (name,
    bounty_value,
    danger_level,
    home_world)
    VALUES
    ($1, $2, $3, $4) RETURNING *"
    values = [@name, @bounty_value, @danger_level, @home_world]
    db.prepare("save", sql)
    @id = db.exec_prepared("save", values)[0]["id"].to_i
    db.close()
  end

  def update()
    db = PG.connect({
      dbname: 'space_cowboys',
      host: 'localhost'
      })
      sql = "UPDATE space_cowboys SET (
      name,
      bounty_value,
      danger_level,
      home_world
      ) = ($1, $2, $3,$4)
      WHERE id = $5"
      values = [@name, @bounty_value, @danger_level, @home_world, @id]
      db.prepare("update", sql)
      db.exec_prepared("update", values)
      db.close()
    end

    def Bounty.find_by_name(name)
      db = PG.connect({
        dbname: 'space_cowboys',
        host: 'localhost'
        })
        sql = "SELECT * FROM space_cowboys
        WHERE name = $1"
        values = [name]
        db.prepare("find_by_name", sql)
        cowboy = db.exec_prepared("find_by_name", value)
        db.close()
        return Bounty.new(cowboy[0])
    end

end
