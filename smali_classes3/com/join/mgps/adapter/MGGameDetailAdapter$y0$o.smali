.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# instance fields
.field a:Lcom/join/mgps/dto/DetialIntentBean;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/join/mgps/dto/DetialIntentBean;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;->a:Lcom/join/mgps/dto/DetialIntentBean;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;->b:Ljava/lang/String;

    return-void
.end method
