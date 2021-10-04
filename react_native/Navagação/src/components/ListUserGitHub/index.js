import React from "react";
import { View, Text, Image } from "react-native";

const ListUserGitHub = ({ user }) => {
  return (
    <View>
      <Text>{user.login}</Text>
      <Text>{user.name}</Text>
      <Image source={{ uri: user.avatar_url }} width={50} height={50} />
    </View>
  );
};

export default ListUserGitHub;
