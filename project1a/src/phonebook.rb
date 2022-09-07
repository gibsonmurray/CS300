class PhoneBook
    def initialize
        @people = Array.new(0){Array.new(0)}
    end

    def add(name, number, is_listed)
        if (number =~ /^\d{1,3}\-\d{1,3}\-\d{1,4}$/) == 0
            for arr in @people
                if (arr[0] != name && (arr[1] == number && arr[2] == false)) || (arr[0] != name && (arr[1] == number && is_listed == false))
                    @people.push([name, number, is_listed])
                end
            end
        end
        false
    end

    def lookup(name)
        for arr in @people
            if name == arr[0] && arr[2] == true
                return arr[1]
            end
        end
        nil
    end

    def lookupByNum(number)
        for arr in @people
            if number == arr[1] && arr[2] == true
                return arr[0]
            end
        end
        nil
    end

    def namesByAc(areacode)
        ans = []
        for arr in @people
            if areacode == arr[1][0..2]
                ans.push(arr[0])
            end
        end
        ans
    end
end