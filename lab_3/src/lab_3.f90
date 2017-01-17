program lab_3
   use Environment
   use Source_IO
   use Source_Process

   implicit none

   character(:), allocatable :: F1, F2!, F3

   type(TextLine), pointer :: Original => Null(), & ! Оригинальный текст
                              Normal   => Null()!, & ! Естественный порядок строк
                              ! Sorted   => Null()    ! Сортированные строки

   ! Входной текстовый файл
   F1 = "../data/F1.txt"
   ! Текстовый файл в естественном порядке строк
   F2 = "../out/F2.txt"
   ! ! Текстовый файл в отсортированном порядке строк
   ! F3 = "../out/F3.txt"

   Original => Read_Text(F1)

   if (Associated(Normal)) &
      call Output_Source_Code(F2, Normal)


end program lab_3