.class public Lcom/papa91/arc/CContext;
.super Ljava/lang/Object;
.source "CContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/CContext$IVideoAdListener;,
        Lcom/papa91/arc/CContext$ISharePrefrence;
    }
.end annotation


# static fields
.field public static final SCENE_FBA:Ljava/lang/String; = "FBA"

.field public static final SCENE_FC:Ljava/lang/String; = "FC"

.field public static final SCENE_GBA:Ljava/lang/String; = "GBA"

.field public static final SCENE_PSP:Ljava/lang/String; = "PSP"

.field public static TARGET_VERSION:I = 0x1a

.field public static mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

.field public static mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setVideoAdListener(Lcom/papa91/arc/CContext$IVideoAdListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    return-void
.end method
