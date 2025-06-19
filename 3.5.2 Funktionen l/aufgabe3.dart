void main() {
  reverseInitials("Marcus", "Schmidt");
  reverseInitials("Daniel", "Jakobowski");
  reverseInitials("Rene", "Bauer");
}

void reverseInitials(String firstname, String lastname) {
  print(
    "${firstname[firstname.length - 1].toUpperCase()}. ${lastname[lastname.length - 1].toUpperCase()}.",
  );
}
