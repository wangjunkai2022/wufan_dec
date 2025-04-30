.class public Lcom/psk/eventmodule/net/util/DeviceIdUtil;
.super Ljava/lang/Object;
.source "DeviceIdUtil.java"


# static fields
.field static TAG:Ljava/lang/String; = "DeviceIdUtil"

.field static deviceIdUtil:Lcom/psk/eventmodule/net/util/DeviceIdUtil; = null

.field static imei:Ljava/lang/String; = ""

.field static oaid:Ljava/lang/String; = ""

.field static umengKey:Ljava/lang/String; = ""

.field static wufanKey:Ljava/lang/String; = ""


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/psk/eventmodule/net/util/DeviceIdUtil;
    .locals 1

    .line 1
    sget-object v0, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->deviceIdUtil:Lcom/psk/eventmodule/net/util/DeviceIdUtil;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/psk/eventmodule/net/util/DeviceIdUtil;

    invoke-direct {v0, p0}, Lcom/psk/eventmodule/net/util/DeviceIdUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->deviceIdUtil:Lcom/psk/eventmodule/net/util/DeviceIdUtil;

    .line 3
    :cond_0
    sget-object p0, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->deviceIdUtil:Lcom/psk/eventmodule/net/util/DeviceIdUtil;

    return-object p0
.end method


# virtual methods
.method public getImei()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method public getUmengKey()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->umengKey:Ljava/lang/String;

    return-object v0
.end method

.method public getWufanKey()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->wufanKey:Ljava/lang/String;

    return-object v0
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->imei:Ljava/lang/String;

    return-void
.end method

.method public setOaid(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->oaid:Ljava/lang/String;

    return-void
.end method

.method public setUmengKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->umengKey:Ljava/lang/String;

    return-void
.end method

.method public setWufanKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->wufanKey:Ljava/lang/String;

    return-void
.end method
