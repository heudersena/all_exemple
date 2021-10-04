import React from "react";

import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";
import { createStackNavigator } from "@react-navigation/stack";

import Sobre from "../pages/Sobre";
import Contato from "../pages/Contato";
import Home from "../pages/Home";
import GitHub from "../pages/GitHub";

const Tab = createBottomTabNavigator();
const Stack = createStackNavigator();

function MyStack() {
  return (
    <Stack.Navigator>
      <Stack.Screen name="Sobre" component={Sobre} />
      <Stack.Screen name="Contato" component={Contato} />
    </Stack.Navigator>
  );
}

const Routes = () => {
  return (
    <Tab.Navigator>
      <Tab.Screen name="GitHub" component={GitHub} />
      <Tab.Screen name="Home" component={Home} />
      <Tab.Screen name="App" component={MyStack} />
    </Tab.Navigator>
  );
};

export default Routes;
