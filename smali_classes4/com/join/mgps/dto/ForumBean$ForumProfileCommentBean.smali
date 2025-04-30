.class public Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;
.super Ljava/lang/Object;
.source "ForumBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumProfileCommentBean"
.end annotation


# static fields
.field public static final TYPE_COMMENT:Ljava/lang/String; = "comment"

.field public static final TYPE_REPLY:Ljava/lang/String; = "reply"


# instance fields
.field private message:Ljava/lang/String;

.field private rnickname:Ljava/lang/String;

.field private ruid:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRnickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->rnickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRuid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->ruid:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setRnickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->rnickname:Ljava/lang/String;

    return-void
.end method

.method public setRuid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->ruid:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->type:Ljava/lang/String;

    return-void
.end method
