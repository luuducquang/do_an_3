import React, { Fragment } from "react";
import { publicRoutes } from "./routes";
import { Route, Routes } from "react-router-dom";
import DefaultLayout from "./layouts/DefaultLayout";
import { CssBaseline, ThemeProvider } from "@mui/material";
import { baselightTheme } from "./theme/DefaultColors";
import Product from "./pages/Product";

function App() {
    const theme = baselightTheme;
    return (
        <ThemeProvider theme={theme}>
            <CssBaseline />
            {publicRoutes.map((route, index) => {
                const Page = route.component;

                let Layout: any = DefaultLayout;
                if (route.layout) {
                    Layout = route.layout;
                } else if (route.layout === null) {
                    Layout = Fragment;
                }

                return (
                    <Routes key={index}>
                        <Route
                            key={index}
                            path={route.path}
                            element={
                                <Layout>
                                    <Page />
                                </Layout>
                            }
                        />
                    </Routes>
                );
            })}
        </ThemeProvider>
    );
}

export default App;
