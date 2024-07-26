<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>




    <!-- admin Sidebar -->
    <aside id="sidebar-left" class="sidebar-left">

        <!-- 상단 Start -->
        <div class="sidebar-header">
            <div class="sidebar-title">
                <div class="logo" style="margin-left: 35px;">

                </div>
            </div>
            <div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html"
                data-fire-event="sidebar-left-toggle">
                <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
            </div>
        </div>
        <!-- 상단 End -->

        <!-- 사이드 Start -->
        <div class="nano">
            <div class="nano-content">
                <nav id="menu" class="nav-main" role="navigation">
                    <ul class="nav nav-main">
                        <li class="nav-active">
                            <a href="/admin/main">
                                <i class="fa fa-home" aria-hidden="true"></i>
                                <span>메인화면</span>
                            </a>
                        </li>
                        <li class="nav-parent">
                            <a>
                                <i class="fa fa-tree"></i>
                                <span>회원관리</span>
                            </a>
                            <ul class="nav nav-children">
                                <li>
                                    <a href="/admin/member">일반회원 관리</a>
                                </li>
                                <li>
                                    <a href="/admin/owner">사업자회원 관리</a>
                                </li>

                            </ul>
                        </li>
                        <li class="nav-parent">
                            <a>
                                <i class="fa fa-align-left" aria-hidden="true"></i>
                                <span>고객센터</span>
                            </a>
                            <ul class="nav nav-children">
                                <li>
                                    <a href="/admin/notice/insert">공지사항 등록</a>
                                </li>
                                <li>
                                    <a href="/admin/notice/list">공지사항 목록</a>
                                </li>
                                <li>
                                    <a href="/admin/faq/insert">FAQ 등록</a>
                                </li>
                                <li>
                                    <a href="/admin/faq/list">FAQ 목록</a>
                                </li>
                            </ul>
                        </li>


                    </ul>
                </nav>
                <!-- 하단 정보 -->
                <div class="sidebar-widget widget-stats">
                    <div class="widget-content">
                        <div><a href="https://goai.co.kr/">© 2024 KH ACADEMY</a></div>
                        <div>Team : CAMPOT</div>
                        <div>주소: 서울특별시 강남구 테해란로 14길 6 YMCA 6층</div>
                        <div>전화: 070 - 4827 - 0567</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 사이드 End -->

    </aside>

    <script>
    document.addEventListener('DOMContentLoaded', (event) => {
        const navParents = document.querySelectorAll('.nav-parent > a');

        navParents.forEach(parent => {
            parent.addEventListener('click', function() {
                const navChildren = this.nextElementSibling;

                if (navChildren.style.display === "block") {
                    navChildren.style.display = "none";
                } else {
                    navChildren.style.display = "block";
                }
            });
        });
    });

    </script>