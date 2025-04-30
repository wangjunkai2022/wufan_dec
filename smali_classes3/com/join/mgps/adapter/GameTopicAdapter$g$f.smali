.class public Lcom/join/mgps/adapter/GameTopicAdapter$g$f;
.super Ljava/lang/Object;
.source "GameTopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/GameTopicAdapter$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;->a:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;->c:Ljava/lang/String;

    return-void
.end method
