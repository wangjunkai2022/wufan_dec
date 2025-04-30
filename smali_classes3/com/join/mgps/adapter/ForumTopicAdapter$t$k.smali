.class public Lcom/join/mgps/adapter/ForumTopicAdapter$t$k;
.super Ljava/lang/Object;
.source "ForumTopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumTopicAdapter$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$k;->a:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$k;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$k;->c:Z

    .line 6
    iput-boolean p4, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$k;->d:Z

    .line 7
    iput-boolean p5, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$k;->e:Z

    return-void
.end method
