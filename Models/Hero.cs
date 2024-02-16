namespace tour_of_heroes_nuget;

public class Hero
{

    public int Id { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Power { get; set; } = string.Empty;
    public string AlterEgo { get; set; } = string.Empty;
    public string[] Abilities { get; set; } = Array.Empty<string>();    
    public string[] Friends { get; set; } = Array.Empty<string>();
    public string[] Enemies { get; set; } = Array.Empty<string>();

    public Hero()
    {

    }

    public Hero(int id, string name, string power, string alterEgo, string[] abilities, string[] friends, string[] enemies)
    {
        Id = id;
        Name = name;
        Power = power;
        AlterEgo = alterEgo;
        Abilities = abilities;
        Friends = friends;
        Enemies = enemies;
    }

    public override string ToString()
    {
        return $"Id: {Id}, Name: {Name}, Power: {Power}, AlterEgo: {AlterEgo}, Abilities: {string.Join(",", Abilities)}, Friends: {string.Join(",", Friends)}, Enemies: {string.Join(",", Enemies)}";
    }

    public override bool Equals(object? obj)
    {
        if (obj == null)
        {
            return false;
        }

        if (obj is Hero hero)
        {
            return Id == hero.Id &&
                Name == hero.Name &&
                Power == hero.Power &&
                AlterEgo == hero.AlterEgo &&
                Abilities.SequenceEqual(hero.Abilities) &&
                Friends.SequenceEqual(hero.Friends) &&
                Enemies.SequenceEqual(hero.Enemies);
        }

        return false;
    }

    public override int GetHashCode()
    {
        return HashCode.Combine(Id, Name, Power, AlterEgo, Abilities, Friends, Enemies);
    }
}
