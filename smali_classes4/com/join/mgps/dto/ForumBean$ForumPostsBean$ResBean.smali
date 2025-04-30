.class public Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;
.super Ljava/lang/Object;
.source "ForumBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResBean"
.end annotation


# instance fields
.field private raw:Ljava/lang/String;

.field private thumb:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->type:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->thumb:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->raw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->raw:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->thumb:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->type:Ljava/lang/String;

    return-void
.end method
