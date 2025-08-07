/*
/// Module: todo
module todo::todo;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

module todo::todo {
    use std::ascii::String;

    public struct TodoList has key, store {
        id: UID,
        items: vector<String>,
    }
}

public fun new( ctx: &mut TxContext){
    let list = TodoList {
        id: object::new(ctx),
        items: vector[],
    };

    transfer::transfer(list, txt_context::sender(ctx));
}

public fun add(list: &mut TodoList, item: String) {
    list.items.push_back(item);
}

public fun remove(list: &mut TodoList, item: u64):  {
    list.items.remove(item);
}

public fun delete(list: TodoList) {
   let TodoList { id, items: _ } = list;
   id.delete();
}

public fun length(list: &TodoList): u64 {
    list.items.length()
}