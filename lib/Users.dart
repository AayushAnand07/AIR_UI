class Users {
  String? name;
  String? avatar;
  String? email;

  Users({required this.avatar, required this.name, this.email});
}

List<Users> users = [
  Users(avatar: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: "John Andrison", email: "John@gmail.com"),
  Users(avatar: "https://images.pexels.com/photos/1462980/pexels-photo-1462980.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: "Mahesh", email: "Mahesh@gmail.com"),
  Users(avatar: "https://images.pexels.com/photos/1024311/pexels-photo-1024311.jpeg?auto=compress&cs=tinysrgb&w=600", name: "Paula Coll", email: "Paula@gmail.com"),
  Users(avatar: "https://images.pexels.com/photos/2589653/pexels-photo-2589653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: "Rick stagner", email: "Rick@gmail.com"),
  Users(avatar: "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: "Larry", email: "Larry@gmail.com"),
];
