import React from "react";
import { View, Text, FlatList } from "react-native";

import axios from "axios";
import { useQuery } from "react-query";

const GitHub = () => {
  const URLGITHUB = "https://api.github.com/users/heudersena";
  const search = async () => {
    return await (
      await axios.get(URLGITHUB)
    ).data;
  };
  const {
    data: github,
    isError,
    isLoading,
    error,
  } = useQuery("/PERFIL", search, {
    retry: true,
    refetchIntervalInBackground: true,
    cacheTime: 1000,
    refetchOnWindowFocus: true,
  });

  if (isLoading) {
    return (
      <View
        style={{
          flex: 1,
          justifyContent: "center",
          alignItems: "center",
        }}
      >
        <Text>Carregando...</Text>
      </View>
    );
  }
  if (isError) {
    return (
      <View
        style={{
          flex: 1,
          justifyContent: "center",
          alignItems: "center",
        }}
      >
        <Text>{error.message}</Text>
      </View>
    );
  }

  function _renderListUserGitHub({ item }) {
    console.log(item);

    return (
      <View>
        <Text>"dasda"</Text>
        <Text>{item.login}</Text>
      </View>
    );
  }

  return (
    <View
      style={{
        flex: 1,
        justifyContent: "center",
        alignItems: "center",
      }}
    >
      <FlatList
        data={github}
        renderItem={({ item }) => <_renderListUserGitHub item={item} />}
        keyExtractor={(item, index) => index.toString()}
      />
    </View>
  );
};

export default GitHub;
