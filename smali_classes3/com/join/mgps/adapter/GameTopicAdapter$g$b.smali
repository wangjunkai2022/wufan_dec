.class public Lcom/join/mgps/adapter/GameTopicAdapter$g$b;
.super Ljava/lang/Object;
.source "GameTopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/GameTopicAdapter$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->d:I

    .line 3
    iput p5, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->e:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->a:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->b:Ljava/lang/String;

    return-void
.end method
