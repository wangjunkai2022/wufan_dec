.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$b;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$b;->a:Z

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$b;->c:Ljava/lang/String;

    return-void
.end method
