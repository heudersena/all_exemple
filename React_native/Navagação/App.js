import "react-native-gesture-handler";
import { QueryClient, QueryClientProvider } from "react-query";
import React from "react";
import { NavigationContainer } from "@react-navigation/native";
import Routes from "./src/Routes";

console.ignoredYellowBox = ["Setting a timer"];

const client = new QueryClient();

export default function App() {
  return (
    <NavigationContainer>
      <QueryClientProvider client={client}>
        <Routes />
      </QueryClientProvider>
    </NavigationContainer>
  );
}
