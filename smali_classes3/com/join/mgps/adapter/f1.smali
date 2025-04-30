.class public Lcom/join/mgps/adapter/f1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GameDetialCustomAdapter.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/f1;->a:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/join/mgps/adapter/f1;->b:I

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/join/mgps/adapter/f1;->c:I

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/f1;->d:I

    const/4 v0, 0x5

    .line 6
    iput v0, p0, Lcom/join/mgps/adapter/f1;->e:I

    const/4 v0, 0x6

    .line 7
    iput v0, p0, Lcom/join/mgps/adapter/f1;->f:I

    const/4 v0, 0x7

    .line 8
    iput v0, p0, Lcom/join/mgps/adapter/f1;->g:I

    const/16 v0, 0x8

    .line 9
    iput v0, p0, Lcom/join/mgps/adapter/f1;->h:I

    const/16 v0, 0x9

    .line 10
    iput v0, p0, Lcom/join/mgps/adapter/f1;->i:I

    const/16 v0, 0xa

    .line 11
    iput v0, p0, Lcom/join/mgps/adapter/f1;->j:I

    const/16 v0, 0xb

    .line 12
    iput v0, p0, Lcom/join/mgps/adapter/f1;->k:I

    const/16 v0, 0xc

    .line 13
    iput v0, p0, Lcom/join/mgps/adapter/f1;->l:I

    const/16 v0, 0xd

    .line 14
    iput v0, p0, Lcom/join/mgps/adapter/f1;->m:I

    const/16 v0, 0xe

    .line 15
    iput v0, p0, Lcom/join/mgps/adapter/f1;->n:I

    const/16 v0, 0xf

    .line 16
    iput v0, p0, Lcom/join/mgps/adapter/f1;->o:I

    const/16 v0, 0x10

    .line 17
    iput v0, p0, Lcom/join/mgps/adapter/f1;->p:I

    const/16 v0, 0x11

    .line 18
    iput v0, p0, Lcom/join/mgps/adapter/f1;->q:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/f1;->getItemViewType(I)I

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
