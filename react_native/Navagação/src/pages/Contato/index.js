import React from "react";
import { SafeAreaView, Text, StyleSheet } from "react-native";
const Contato = () => {
  return (
    <SafeAreaView style={styles.container}>
      <Text>Cotato</Text>
    </SafeAreaView>
  );
};

export default Contato;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "pink",
  },
});
