.class public Ld0/i/a/c/b/f$a;
.super Ljava/lang/Object;
.source "HeaderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/i/a/c/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final h:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final i:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final synthetic j:Ld0/i/a/c/b/f;


# direct methods
.method public constructor <init>(Ld0/i/a/c/b/f;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld0/i/a/c/b/f$a;->j:Ld0/i/a/c/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ld0/i/a/c/b/f$a;->h:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3
    iput-object p3, p0, Ld0/i/a/c/b/f$a;->i:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld0/i/a/c/b/f$a;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld0/i/a/c/b/f$a;->j:Ld0/i/a/c/b/f;

    iget-object v0, v0, Ld0/i/a/c/b/f;->d:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ld0/i/a/c/b/f$a;->j:Ld0/i/a/c/b/f;

    iget-object v1, p0, Ld0/i/a/c/b/f$a;->h:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Ld0/i/a/c/b/f$a;->i:Landroid/view/View;

    iget-object v3, v0, Ld0/i/a/c/b/f;->d:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ld0/i/a/c/b/f;->G(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 4
    iget-object v0, p0, Ld0/i/a/c/b/f$a;->i:Landroid/view/View;

    .line 5
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Ld0/i/a/c/b/f$a;->j:Ld0/i/a/c/b/f;

    iget-object v1, p0, Ld0/i/a/c/b/f$a;->h:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Ld0/i/a/c/b/f$a;->i:Landroid/view/View;

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->O(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 10
    iget-boolean v3, v2, Lcom/google/android/material/appbar/AppBarLayout;->r:Z

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->K(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->d(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->c(Z)Z

    :cond_1
    :goto_0
    return-void
.end method
