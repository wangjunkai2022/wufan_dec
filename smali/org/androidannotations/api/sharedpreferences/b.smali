.class public abstract Lorg/androidannotations/api/sharedpreferences/b;
.super Ljava/lang/Object;
.source "AbstractPrefField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final b:Landroid/content/SharedPreferences;

.field protected final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/androidannotations/api/sharedpreferences/b;->b:Landroid/content/SharedPreferences;

    .line 3
    iput-object p2, p0, Lorg/androidannotations/api/sharedpreferences/b;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/androidannotations/api/sharedpreferences/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/androidannotations/api/sharedpreferences/m;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method protected b()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/b;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/b;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract e(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/androidannotations/api/sharedpreferences/b;->a:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->h(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract h(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/b;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
