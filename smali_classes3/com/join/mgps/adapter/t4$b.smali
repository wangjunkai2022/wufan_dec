.class Lcom/join/mgps/adapter/t4$b;
.super Ljava/lang/Object;
.source "PapaMainV2Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/t4;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/t4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/t4;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t4$b;->b:Lcom/join/mgps/adapter/t4;

    iput p2, p0, Lcom/join/mgps/adapter/t4$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/t4$b;->b:Lcom/join/mgps/adapter/t4;

    invoke-static {p1}, Lcom/join/mgps/adapter/t4;->o(Lcom/join/mgps/adapter/t4;)Lcom/join/android/app/component/video/c;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/t4$b;->a:I

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/c;->y(I)V

    return-void
.end method
