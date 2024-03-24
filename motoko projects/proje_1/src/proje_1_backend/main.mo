// importlar 
import Map "mo:base/HashMap";
import Text "mo:base/Text";

// actor --> canister --> smart contract 

actor {
  //motoko --> type language
  type Name = Text;
  type Phone = Text;

  type Entry = {
    desc: Text;
    phone: Phone;
  };
  // veriable (değişkenler)
  //let --> immutable (değiştirelemez)
  //var --> (değiştirilebilir)
  let phonebook = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);
  //fonksiyonlaar
  // query -> sorgulamak
  // update -> güncellemek
  public func insert (name: Name, entry:Entry) : async(){
    phonebook.put(name, entry);
  };
  public query func lookup(name: Name) : async ? Entry{
    phonebook.get(name) // return phonebook.get(name);
  };
};
