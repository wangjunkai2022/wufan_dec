.class public Lcom/xinzhu/overmind/c$a;
.super Ljava/lang/Object;
.source "OvermindConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "66:55:44:33:22:11"

.field private static final b:Ljava/lang/String; = "11:22:33:44:55:66"

.field private static final c:Ljava/lang/String; = "FAKE_SSID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "66:55:44:33:22:11"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "11:22:33:44:55:66"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "FAKE_SSID"

    return-object v0
.end method
