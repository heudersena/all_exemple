import React from "react";
import { SafeAreaView, Text, StyleSheet, Button } from "react-native";

// import { Container } from './styles';

const Sobre = ({ navigation, route }) => {
  return (
    <SafeAreaView style={styles.container}>
      <Text>Sobre</Text>
      <Button
        title="Ir pagina Contato"
        onPress={() => navigation.navigate("Contato", { screen: "Contato" })}
      />
      <Text>{ route.params?.name }</Text>
    </SafeAreaView>
  );
};

export default Sobre;
const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#9932cc",
  },
});
