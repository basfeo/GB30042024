class Animal:
    def __init__(self, animal_type, name, birthday):
        self.animal_type = animal_type
        self.name = name
        self.birthday = birthday
        self.commands = []
        self.id = None  # Будет задан после добавления в реестр

    def add_command(self, command):
        self.commands.append(command)

    def get_commands(self):
        return self.commands

class AnimalRegistry:
    def __init__(self):
        self.animals = []
        self.pet_counter = 0
        self.pack_animal_counter = 0

    def add_animal(self, animal):
        if animal.animal_type in ["собака", "кошка", "хомяк"]:
            self.pet_counter += 1
            animal.id = self.pet_counter
        else:
            self.pack_animal_counter += 1
            animal.id = self.pack_animal_counter
        self.animals.append(animal)

    def get_animal_commands_by_id(self, animal_id):
        for animal in self.animals:
            if animal.id == animal_id:
                return animal.get_commands()
        return "Животное не найдено"

    def train_animal_by_id(self, animal_id, command):
        for animal in self.animals:
            if animal.id == animal_id:
                animal.add_command(command)
                return f"Животное (ID: {animal_id}) обучено команде: {command}"
        return "Животное не найдено"

    def list_animals_by_birthday(self):
        sorted_animals = sorted(self.animals, key=lambda x: x.birthday)
        for animal in sorted_animals:
            print(f"ID: {animal.id}, Тип: {animal.animal_type}, Имя: {animal.name}, Дата рождения: {animal.birthday}")

def main():
    registry = AnimalRegistry()
    while True:
        print("\n1. Добавить животное\n2. Показать команды животного\n3. Обучить животное команде\n4. Вывести список животных по дате рождения\n5. Выход")
        choice = input("Выберите действие: ")
        
        if choice == '1':
            animal_type = input("Введите тип животного (например, 'собака'): ")
            name = input("Введите имя животного: ")
            birthday = input("Введите дату рождения животного (ГГГГ-ММ-ДД): ")
            registry.add_animal(Animal(animal_type, name, birthday))
            print("Животное добавлено.")
            
        elif choice == '2':
            animal_id = int(input("Введите ID животного: "))
            commands = registry.get_animal_commands_by_id(animal_id)
            print(f"Команды животного: {commands}")
            
        elif choice == '3':
            animal_id = int(input("Введите ID животного: "))
            command = input("Введите команду для обучения: ")
            result = registry.train_animal_by_id(animal_id, command)
            print(result)

        elif choice == '4':
            registry.list_animals_by_birthday()
            
        elif choice == '5':
            break
            
if __name__ == "__main__":
    main()
