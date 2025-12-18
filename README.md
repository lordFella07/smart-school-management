Make changes

git add .

git commit -m "message"

git push origin feature/login-page

git checkout epul

<<<<<<< HEAD
git merge main

git pull <!-- dalam branch 'main' >

=======
>>>>>>> 1232532a3abdbc44a7797f0bc28c206dbd4cead9
test test test

follow coding ni untuk sidebar

<!-- SIDEBAR -->
    <div class="sidebar">
        <div class="logo">Smart School System</div>

        <ul class="menu-list">
            <li><i class="ri-home-2-line"></i><span>Home</span></li>
            <li><i class="ri-file-text-line"></i><span>Examination</span></li>
            <li><i class="ri-calendar-check-line"></i><span>Attendance</span></li>
        </ul>

        <!-- LOGOUT BUTTON -->
        <div class="logout">
            <button>
                <i class="ri-shut-down-line"></i>
            </button>
        </div>
    </div>

    <!-- LOGOUT CONFIRMATION MODAL -->
    <div id="logoutModal" class="modal">
        <div class="modal-content">
            <p>Do you want to logout from this account?</p>
            <div class="modal-buttons">
                <button id="cancelLogout">Cancel</button>
                <button id="confirmLogout">Logout</button>
            </div>
        </div>
    </div>