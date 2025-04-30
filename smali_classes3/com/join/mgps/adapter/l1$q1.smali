.class public Lcom/join/mgps/adapter/l1$q1;
.super Lcom/join/mgps/adapter/l1$n1;
.source "GameDetialModleFourAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "q1"
.end annotation


# instance fields
.field private final j:I

.field private final k:I

.field final synthetic l:Lcom/join/mgps/adapter/l1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/l1;IILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$q1;->l:Lcom/join/mgps/adapter/l1;

    .line 2
    invoke-direct {p0, p1, p4, p5}, Lcom/join/mgps/adapter/l1$n1;-><init>(Lcom/join/mgps/adapter/l1;Ljava/lang/Object;I)V

    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/l1$q1;->j:I

    .line 4
    iput p3, p0, Lcom/join/mgps/adapter/l1$q1;->k:I

    return-void
.end method
