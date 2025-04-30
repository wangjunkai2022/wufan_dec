.class Lcom/join/mgps/adapter/h4$z;
.super Ljava/lang/Object;
.source "PapaMainAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/h4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/h4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h4;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$z;->b:Lcom/join/mgps/adapter/h4;

    iput p2, p0, Lcom/join/mgps/adapter/h4$z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$z;->b:Lcom/join/mgps/adapter/h4;

    iget-object p1, p1, Lcom/join/mgps/adapter/h4;->k:Lcom/join/android/app/component/video/c;

    iget v0, p0, Lcom/join/mgps/adapter/h4$z;->a:I

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/c;->y(I)V

    return-void
.end method
