.class public final Lorg/androidannotations/api/sharedpreferences/h;
.super Lorg/androidannotations/api/sharedpreferences/a;
.source "IntPrefEditorField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/androidannotations/api/sharedpreferences/e<",
        "TT;>;>",
        "Lorg/androidannotations/api/sharedpreferences/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/androidannotations/api/sharedpreferences/e;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/androidannotations/api/sharedpreferences/a;-><init>(Lorg/androidannotations/api/sharedpreferences/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(I)Lorg/androidannotations/api/sharedpreferences/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/a;->a:Lorg/androidannotations/api/sharedpreferences/e;

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/e;->f()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2
    iget-object p1, p0, Lorg/androidannotations/api/sharedpreferences/a;->a:Lorg/androidannotations/api/sharedpreferences/e;

    return-object p1
.end method
