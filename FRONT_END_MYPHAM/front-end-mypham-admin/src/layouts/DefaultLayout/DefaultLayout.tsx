import HeaderAndMenu from "../components/HeaderAndMenu";

function DefaultLayout({ children }: any) {
    return (
        <>
            <HeaderAndMenu />
            <div>{children}</div>
        </>
    );
}

export default DefaultLayout;
