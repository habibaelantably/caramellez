
class FiltersStates{}

class InitialFilterState extends FiltersStates{}

class ChangeFilterState extends FiltersStates{
  int index;

  ChangeFilterState(this.index);
}


