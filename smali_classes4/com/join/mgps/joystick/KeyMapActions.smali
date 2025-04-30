.class public Lcom/join/mgps/joystick/KeyMapActions;
.super Ljava/lang/Object;
.source "KeyMapActions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillConnectedGamepadInfo(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V
    .locals 9

    .line 1
    invoke-static {p0}, Lcom/papa/controller/core/d;->r(Landroid/content/Context;)Lcom/papa/controller/core/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, ""

    move-object v3, v1

    move-object v4, v3

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/papa/controller/core/ControllerManager$c;

    invoke-virtual {v3}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/papa/controller/core/ControllerManager$c;

    invoke-virtual {v4}, Lcom/papa/controller/core/ControllerManager$c;->a()Ljava/lang/String;

    move-result-object v4

    const-string v7, ":"

    const-string v8, "_"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    move-object v3, v5

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v3, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 6
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v4, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 7
    :cond_2
    invoke-virtual {p1, v3}, Lcom/papa/sim/statistic/JoyStickConfig;->setGamepad_name(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v4}, Lcom/papa/sim/statistic/JoyStickConfig;->setGamepad_mac(Ljava/lang/String;)V

    return-void
.end method

.method public static saveStat(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 1
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-ne p1, v1, :cond_1

    const/16 v0, 0x1f

    goto :goto_0

    .line 2
    :cond_1
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->GBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-ne p1, v1, :cond_2

    const/16 v0, 0x21

    goto :goto_0

    .line 3
    :cond_2
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->SFC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-ne p1, v1, :cond_3

    const/16 v0, 0x2b

    goto :goto_0

    .line 4
    :cond_3
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PSP:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-ne p1, v1, :cond_4

    const/16 v0, 0x22

    goto :goto_0

    .line 5
    :cond_4
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-ne p1, v1, :cond_5

    const/16 v0, 0x23

    goto :goto_0

    .line 6
    :cond_5
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->MD:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-ne p1, v1, :cond_6

    const/16 v0, 0x33

    goto :goto_0

    .line 7
    :cond_6
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PS:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-ne p1, v1, :cond_7

    const/16 v0, 0x35

    goto :goto_0

    .line 8
    :cond_7
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->WSC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-ne p1, v1, :cond_8

    const/16 v0, 0x36

    goto :goto_0

    .line 9
    :cond_8
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->GBC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-ne p1, v1, :cond_9

    const/16 v0, 0x38

    goto :goto_0

    .line 10
    :cond_9
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->DC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-ne p1, v1, :cond_a

    const/16 v0, 0x3c

    goto :goto_0

    .line 11
    :cond_a
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->N64:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-ne p1, v1, :cond_b

    const/16 v0, 0x39

    .line 12
    :cond_b
    :goto_0
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v3

    const/4 v6, 0x0

    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/p;->Y(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 13
    new-instance p1, Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-direct {p1}, Lcom/papa/sim/statistic/JoyStickConfig;-><init>()V

    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setUid(I)V

    .line 16
    :cond_c
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/JoyStickConfig;->setType(I)V

    .line 17
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/JoyStickConfig;->setFile(Ljava/lang/String;)V

    .line 18
    invoke-static {p0, p1}, Lcom/join/mgps/joystick/KeyMapActions;->fillConnectedGamepadInfo(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V

    .line 19
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setUpdate_time(J)V

    .line 20
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/papa/sim/statistic/p;->r1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
