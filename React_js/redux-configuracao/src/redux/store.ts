import { configureStore } from "@reduxjs/toolkit";
import storage from "redux-persist/lib/storage";
import { persistReducer } from "redux-persist";
import { combineReducers } from "redux";
import thunk from "redux-thunk";

import userReducer from "./reducers/userReducer";
import themeReducer from "./reducers/themeReducer";

const reducers = combineReducers({
  user: userReducer,
  theme: themeReducer,
});

const persistConfig = {
  key: "root",
  storage,
  whitelist: ["user", "theme"],
};

const persistedReducer = persistReducer(persistConfig, reducers);

export const store = configureStore({
  reducer: persistedReducer,
  devTools: process.env.NODE_ENV !== "production",
  middleware: [thunk],
});

export type RootState = ReturnType<typeof store.getState>;
