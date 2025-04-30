.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;

.field public d:Lcom/join/mgps/dto/CommentBaseBean;


# direct methods
.method public constructor <init>(ZLcom/join/mgps/dto/CommentBaseBean;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->a:Z

    .line 7
    iput-boolean p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->b:Z

    .line 8
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->d:Lcom/join/mgps/dto/CommentBaseBean;

    return-void
.end method

.method public constructor <init>(ZLcom/join/mgps/dto/GameCommitListBean$GameCommitList;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->a:Z

    .line 3
    iput-boolean p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->b:Z

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->c:Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;

    return-void
.end method
