.class public Lcom/join/mgps/adapter/h5$h;
.super Ljava/lang/Object;
.source "SearchGameListAdapter.java"

# interfaces
.implements Lj1/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/h5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4

.field public static final h:I = 0x5

.field public static final i:I = 0x6

.field public static final j:I = 0x7

.field public static final k:I = 0x8

.field public static final l:I = 0x9

.field public static final m:I = 0xa

.field public static final n:I = 0xb

.field public static final o:I = 0xc

.field public static final p:I = 0xd


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/adapter/h5$h;->a:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/h5$h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">()TO;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h5$h;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b(Z)Lcom/join/mgps/adapter/h5$h;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/h5$h;->c:Z

    return-object p0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/h5$h;->a:I

    return v0
.end method
