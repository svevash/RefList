#include <iostream>
#include <memory>

template<typename T>
class RefList;

template<typename T>
class Node {
 private:
  T value;
  std::shared_ptr<Node> next;
  std::shared_ptr<Node> prev;
  bool deleted;
  int refCount;

 public:
  explicit Node();
  explicit Node(T val);
  Node(T val, std::shared_ptr<Node> n, std::shared_ptr<Node> pr);
  ~Node() = default;

};

template<typename T>
Node<T>::Node() : deleted(false), refCount(2){}

template<typename T>
Node<T>::Node(T val) : value(val), deleted(false), refCount(2) {}

template<typename T>
Node<T>::Node(T val, std::shared_ptr<Node> n, std::shared_ptr<Node> pr) :
        value(val), deleted(false), refCount(2), next(n), prev(pr) {}

template<typename T>
class Iterator {
 private:
  std::shared_ptr<Node<T>> node;
  std::shared_ptr<RefList<T>> container;
 public:
  explicit Iterator(RefList<T> container);
  ~Iterator() = default;
  void erase();
  Iterator& operator++();
  Iterator& operator--();
  bool operator==(const Iterator&) const;
  bool operator!=(const Iterator&) const;
};

template<typename T>
void Iterator<T>::erase() {

}
template<typename T>
Iterator<T> &Iterator<T>::operator++() {
    node = node.get()->next;
}
template<typename T>
Iterator<T> &Iterator<T>::operator--() {
    node = node.get()->prev;
}
template<typename T>
bool Iterator<T>::operator==(const Iterator & other) const {
    return node.get() == other.node.get();
}
template<typename T>
bool Iterator<T>::operator!=(const Iterator & other) const {
    return node.get() != other.node.get();
}
template<typename T>
Iterator<T>::Iterator(RefList<T> container) : container(container) {
    node = this->container.get()->begin();
}

template<typename T>
class RefList {
 private:
  Node<T> start;
  Node<T> finish;


 public:
  RefList();
  ~RefList();
  bool empty();
  void push_back(T value);
  void push_front(T value);
  int size();
  void pop_back();
  void pop_front();
  void print();

  Iterator<T> begin();
  Iterator<T> end();
  Iterator<T> find(const T &) const;


};
template<typename T>
RefList<T>::RefList() {

}
template<typename T>
RefList<T>::~RefList() {

}

template<typename T>
bool RefList<T>::empty() {
    return size() == 0;
}

template<typename T>
void RefList<T>::push_back(T value) {
    auto el = std::make_shared<Node<T>>(value);
    el.get()->next.get() = finish;
    el.get()->prev = finish.prev;
    finish.prev.get()->next = el;
    finish.prev = el;
}
template<typename T>
void RefList<T>::push_front(T value) {
    start.next.get()->prev = std::make_shared<Node<T>>(value);
    start.next.get()
}
template<typename T>
int RefList<T>::size() {
    int count = 0;
    auto tmp = start.next;
    while (tmp != finish) {
        tmp = tmp->next;
        count++;
    }
    return count;
}
template<typename T>
void RefList<T>::pop_back() {
    finish.prev.get() = finish.prev.get()->prev.get();
    finish.prev.get()->next = finish;

}
template<typename T>
void RefList<T>::pop_front() {

}
template<typename T>
void RefList<T>::print() {

}
template<typename T>
Iterator<T> RefList<T>::begin() {
    return Iterator<T>();
}
template<typename T>
Iterator<T> RefList<T>::end() {
    return Iterator<T>();
}
template<typename T>
Iterator<T> RefList<T>::find(const T &) const {
    Iterator<T> res = begin();

    return Iterator<T>();
}



