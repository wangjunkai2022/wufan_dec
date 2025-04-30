.class public Lcom/join/mgps/adapter/ForumTopicAdapter$t$e;
.super Ljava/lang/Object;
.source "ForumTopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumTopicAdapter$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$e;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$e;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$e;->c:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$e;->d:Z

    .line 6
    iput p5, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$e;->e:I

    return-void
.end method
