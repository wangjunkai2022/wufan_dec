.class public Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;
.super Ljava/lang/Object;
.source "ForumTopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumTopicAdapter$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IIIZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->a:I

    .line 4
    iput p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->f:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->b:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->c:I

    .line 7
    iput p5, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->d:I

    .line 8
    iput p6, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->e:I

    .line 9
    iput-boolean p7, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->g:Z

    .line 10
    iput-boolean p8, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->h:Z

    return-void
.end method
