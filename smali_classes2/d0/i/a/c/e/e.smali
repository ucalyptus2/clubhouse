.class public Ld0/i/a/c/e/e;
.super Ljava/lang/Object;
.source "BottomAppBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Landroidx/appcompat/widget/ActionMenuView;

.field public final synthetic i:I

.field public final synthetic j:Z

.field public final synthetic k:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld0/i/a/c/e/e;->k:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput-object p2, p0, Ld0/i/a/c/e/e;->h:Landroidx/appcompat/widget/ActionMenuView;

    iput p3, p0, Ld0/i/a/c/e/e;->i:I

    iput-boolean p4, p0, Ld0/i/a/c/e/e;->j:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld0/i/a/c/e/e;->h:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Ld0/i/a/c/e/e;->k:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget v2, p0, Ld0/i/a/c/e/e;->i:I

    iget-boolean v3, p0, Ld0/i/a/c/e/e;->j:Z

    .line 2
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->z(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    return-void
.end method
