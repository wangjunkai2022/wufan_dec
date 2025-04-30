.class Lcom/join/mgps/activity/UploadActivity$c$a;
.super Ljava/lang/Object;
.source "UploadActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/UploadActivity$c;-><init>(Lcom/join/mgps/activity/UploadActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/UploadActivity;

.field final synthetic b:Lcom/join/mgps/activity/UploadActivity$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/UploadActivity$c;Lcom/join/mgps/activity/UploadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UploadActivity$c$a;->b:Lcom/join/mgps/activity/UploadActivity$c;

    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity$c$a;->a:Lcom/join/mgps/activity/UploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/UploadDialogBean;

    .line 2
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity$c$a;->b:Lcom/join/mgps/activity/UploadActivity$c;

    iget-object p2, p2, Lcom/join/mgps/activity/UploadActivity$c;->f:Lcom/join/mgps/activity/UploadActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/UploadActivity;->d:Lcom/join/mgps/dto/UploadDialogBean;

    if-eqz p2, :cond_0

    .line 4
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity$c$a;->b:Lcom/join/mgps/activity/UploadActivity$c;

    iget-object p2, p2, Lcom/join/mgps/activity/UploadActivity$c;->c:Lcom/join/mgps/adapter/l6;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity$c$a;->b:Lcom/join/mgps/activity/UploadActivity$c;

    iget-object p2, p2, Lcom/join/mgps/activity/UploadActivity$c;->f:Lcom/join/mgps/activity/UploadActivity;

    iput-object p1, p2, Lcom/join/mgps/activity/UploadActivity;->d:Lcom/join/mgps/dto/UploadDialogBean;

    .line 7
    iget-object p2, p2, Lcom/join/mgps/activity/UploadActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/UploadDialogBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity$c$a;->b:Lcom/join/mgps/activity/UploadActivity$c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
