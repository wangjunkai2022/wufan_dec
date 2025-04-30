.class public final enum Lorg/androidannotations/annotations/Receiver$RegisterAt;
.super Ljava/lang/Enum;
.source "Receiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/annotations/Receiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegisterAt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/androidannotations/annotations/Receiver$RegisterAt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/androidannotations/annotations/Receiver$RegisterAt;

.field public static final enum OnAttachOnDetach:Lorg/androidannotations/annotations/Receiver$RegisterAt;

.field public static final enum OnCreateOnDestroy:Lorg/androidannotations/annotations/Receiver$RegisterAt;

.field public static final enum OnResumeOnPause:Lorg/androidannotations/annotations/Receiver$RegisterAt;

.field public static final enum OnStartOnStop:Lorg/androidannotations/annotations/Receiver$RegisterAt;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/androidannotations/annotations/Receiver$RegisterAt;

    const-string v1, "OnCreateOnDestroy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/androidannotations/annotations/Receiver$RegisterAt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/androidannotations/annotations/Receiver$RegisterAt;->OnCreateOnDestroy:Lorg/androidannotations/annotations/Receiver$RegisterAt;

    .line 2
    new-instance v1, Lorg/androidannotations/annotations/Receiver$RegisterAt;

    const-string v3, "OnStartOnStop"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/androidannotations/annotations/Receiver$RegisterAt;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/androidannotations/annotations/Receiver$RegisterAt;->OnStartOnStop:Lorg/androidannotations/annotations/Receiver$RegisterAt;

    .line 3
    new-instance v3, Lorg/androidannotations/annotations/Receiver$RegisterAt;

    const-string v5, "OnResumeOnPause"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/androidannotations/annotations/Receiver$RegisterAt;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/androidannotations/annotations/Receiver$RegisterAt;->OnResumeOnPause:Lorg/androidannotations/annotations/Receiver$RegisterAt;

    .line 4
    new-instance v5, Lorg/androidannotations/annotations/Receiver$RegisterAt;

    const-string v7, "OnAttachOnDetach"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/androidannotations/annotations/Receiver$RegisterAt;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/androidannotations/annotations/Receiver$RegisterAt;->OnAttachOnDetach:Lorg/androidannotations/annotations/Receiver$RegisterAt;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/androidannotations/annotations/Receiver$RegisterAt;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lorg/androidannotations/annotations/Receiver$RegisterAt;->$VALUES:[Lorg/androidannotations/annotations/Receiver$RegisterAt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/androidannotations/annotations/Receiver$RegisterAt;
    .locals 1

    .line 1
    const-class v0, Lorg/androidannotations/annotations/Receiver$RegisterAt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/androidannotations/annotations/Receiver$RegisterAt;

    return-object p0
.end method

.method public static values()[Lorg/androidannotations/annotations/Receiver$RegisterAt;
    .locals 1

    .line 1
    sget-object v0, Lorg/androidannotations/annotations/Receiver$RegisterAt;->$VALUES:[Lorg/androidannotations/annotations/Receiver$RegisterAt;

    invoke-virtual {v0}, [Lorg/androidannotations/annotations/Receiver$RegisterAt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/androidannotations/annotations/Receiver$RegisterAt;

    return-object v0
.end method
