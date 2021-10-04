import React from "react";
import {
  StyleSheet,
  Text,
  SafeAreaView,
  Button,
  ScrollView,
} from "react-native";
import { useQuery } from "react-query";
import axios from "axios";
import { FlatList } from "react-native-gesture-handler";
import ListUserGitHub from "../../components/ListUserGitHub";
// import { Container } from './styles';

const Home = ({ navigation }) => {
  const URL_GITHUB = "https://api.github.com/users/heudersena";

  const { data, isError, isLoading, isPlaceholderData } = useQuery(
    "users",
    async () => {
      const response = await axios.get(URL_GITHUB);
      return response.data;
    },
    { cacheTime: 1000 }
  );
  if (isError) {
    return <Text>Error</Text>;
  }
  if (isLoading) {
    return <Text>carregando...</Text>;
  }
  console.log(isPlaceholderData);
  if (isPlaceholderData) {
    return <Text>isPlaceholderData...</Text>;
  }

  return (
    <SafeAreaView style={styles.container}>
      <Text>Home</Text>
      <Button
        title="Ir pagina sobre"
        onPress={() =>
          navigation.navigate("App", {
            screen: "Sobre",
            params: { name: "heuder rodrigues de sena" },
          })
        }
      />

      <ListUserGitHub user={data} />
    </SafeAreaView>
  );
};

export default Home;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#7159c1",
  },
});
