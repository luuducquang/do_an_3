import React, { useEffect, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import {
    Avatar,
    Box,
    Menu,
    Button,
    IconButton,
    MenuItem,
    ListItemIcon,
    ListItemText,
} from "@mui/material";

import { IconListCheck, IconMail, IconUser } from "@tabler/icons";
import { apiImage } from "../../../constant/api";

// import ProfileImg from "./assest/img/avt_default.jpg";

type User = {
    mataikhoan: any;
    anhdaidien: any;
    hoten: any;
};

const Profile = () => {
    const [anchorEl2, setAnchorEl2] = useState(null);
    const navigate = useNavigate();
    const [dataUser, setDataUser] = useState<User>();

    const handleClick2 = (event: any) => {
        setAnchorEl2(event.currentTarget);
    };
    const handleClose2 = () => {
        setAnchorEl2(null);
    };
    const handlerLogout = () => {
        async function logout() {
            localStorage.setItem("user", JSON.stringify(null));
            navigate("/login");
        }
        logout();
    };

    useEffect(() => {
        const user = JSON.parse(localStorage.getItem("user") || "{}");
        setDataUser(user);
    }, []);

    return (
        <Box>
            <IconButton
                size="large"
                aria-label="show 11 new notifications"
                color="inherit"
                aria-controls="msgs-menu"
                aria-haspopup="true"
                sx={{
                    ...(typeof anchorEl2 === "object" && {
                        color: "primary.main",
                    }),
                }}
                onClick={handleClick2}
            >
                <Avatar
                    src={apiImage + dataUser?.anhdaidien}
                    sx={{
                        width: 35,
                        height: 35,
                    }}
                />
                <div
                    style={{
                        display: "flex",
                        flexDirection: "column",
                        alignItems: "flex-start",
                        fontSize: "16px",
                        marginLeft: "10px",
                    }}
                >
                    <span>Xin chào,</span>
                    <span>{dataUser?.hoten}</span>
                </div>
            </IconButton>
            {/* ------------------------------------------- */}
            {/* Message Dropdown */}
            {/* ------------------------------------------- */}
            <Menu
                id="msgs-menu"
                anchorEl={anchorEl2}
                keepMounted
                open={Boolean(anchorEl2)}
                onClose={handleClose2}
                anchorOrigin={{ horizontal: "right", vertical: "bottom" }}
                transformOrigin={{ horizontal: "right", vertical: "top" }}
                sx={{
                    "& .MuiMenu-paper": {
                        width: "200px",
                    },
                }}
            >
                <MenuItem>
                    <ListItemIcon>
                        <IconUser width={20} />
                    </ListItemIcon>
                    <ListItemText>My Profile</ListItemText>
                </MenuItem>
                <MenuItem>
                    <ListItemIcon>
                        <IconMail width={20} />
                    </ListItemIcon>
                    <ListItemText>My Account</ListItemText>
                </MenuItem>
                <MenuItem>
                    <ListItemIcon>
                        <IconListCheck width={20} />
                    </ListItemIcon>
                    <ListItemText>My Tasks</ListItemText>
                </MenuItem>
                <Box mt={1} py={1} px={2}>
                    <Button
                        variant="outlined"
                        color="primary"
                        onClick={handlerLogout}
                        fullWidth
                    >
                        Logout
                    </Button>
                </Box>
            </Menu>
        </Box>
    );
};

export default Profile;
