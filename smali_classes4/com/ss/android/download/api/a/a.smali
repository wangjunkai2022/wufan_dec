.class public Lcom/ss/android/download/api/a/a;
.super Ljava/lang/Object;
.source "DefaultDownloadUIFactory.java"

# interfaces
.implements Lcom/ss/android/download/api/config/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/ss/android/download/api/model/b;)Landroid/app/Dialog;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ss/android/download/api/model/b;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/download/api/model/b;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/download/api/model/b;->d:Ljava/lang/String;

    new-instance v2, Lcom/ss/android/download/api/a/a$2;

    invoke-direct {v2, p0}, Lcom/ss/android/download/api/a/a$2;-><init>(Lcom/ss/android/download/api/model/b;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/download/api/model/b;->e:Ljava/lang/String;

    new-instance v2, Lcom/ss/android/download/api/a/a$1;

    invoke-direct {v2, p0}, Lcom/ss/android/download/api/a/a$1;-><init>(Lcom/ss/android/download/api/model/b;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 8
    iget-boolean v1, p0, Lcom/ss/android/download/api/model/b;->f:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    new-instance v1, Lcom/ss/android/download/api/a/a$3;

    invoke-direct {v1, p0}, Lcom/ss/android/download/api/a/a$3;-><init>(Lcom/ss/android/download/api/model/b;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 10
    iget-object p0, p0, Lcom/ss/android/download/api/model/b;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(ILandroid/content/Context;Lcom/ss/android/download/api/download/DownloadModel;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    invoke-static {p2, p4, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public b(Lcom/ss/android/download/api/model/b;)Landroid/app/Dialog;
    .locals 0
    .param p1    # Lcom/ss/android/download/api/model/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/ss/android/download/api/a/a;->a(Lcom/ss/android/download/api/model/b;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
