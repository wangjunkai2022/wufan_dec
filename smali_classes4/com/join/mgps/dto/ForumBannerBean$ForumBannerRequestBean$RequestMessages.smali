.class public Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;
.super Ljava/lang/Object;
.source "ForumBannerBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestMessages"
.end annotation


# instance fields
.field private args:Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;

.field private modeltype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;->modeltype:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;->args:Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;

    return-void
.end method


# virtual methods
.method public getArgs()Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;->args:Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;

    return-object v0
.end method

.method public getModeltype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;->modeltype:Ljava/lang/String;

    return-object v0
.end method

.method public setArgs(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;->args:Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;

    return-void
.end method

.method public setModeltype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessages;->modeltype:Ljava/lang/String;

    return-void
.end method
