.class final Lcom/ss/android/download/api/a/a$2;
.super Ljava/lang/Object;
.source "DefaultDownloadUIFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/download/api/a/a;->a(Lcom/ss/android/download/api/model/b;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/download/api/model/b;


# direct methods
.method constructor <init>(Lcom/ss/android/download/api/model/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/download/api/a/a$2;->a:Lcom/ss/android/download/api/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ss/android/download/api/a/a$2;->a:Lcom/ss/android/download/api/model/b;

    iget-object p2, p2, Lcom/ss/android/download/api/model/b;->h:Lcom/ss/android/download/api/model/b$b;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/ss/android/download/api/model/b$b;->a(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
