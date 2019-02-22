"use strict";
var react = require('react');
const useEffect = react.useEffect;
const useState = react.useState;
const useReducer = react.useReducer;

exports.useEffect = function(a) {
  return useEffect(function() {
    a();
  })
};

exports.useEffect1 = function(a) {
  return function(end) {
    return useEffect(function () {
      a();
      return function() {
        end();
      }
    });
  }  
};

exports.useEffect2 = function (a) {
  return function (end) {
    return function (deps) {
      return useEffect(function () {
        a();
        return function () {
          end();
        }
      }, deps);
    }
  }
};

exports.useState = function (initialVal) {
  return useState(initialVal);
};

exports.useReducer = function(a) {
  return function(state) {
    return function(action) {
      return useReducer(a(state, action));
    }
  }
}

  // useReducer<S, I, A>(
  //   reducer: (S, A) => S,
  //   initialArg: I,
  //   init?: (I) => S,
  // ): [S, Dispatch<A>],
  // useContext<T>(
  //   context: ReactContext<T>,
  //   observedBits: void | number | boolean,
  // ): T,
  // useRef<T>(initialValue: T): {current: T},


